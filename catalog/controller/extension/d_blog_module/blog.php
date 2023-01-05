<?php
class ControllerExtensionDBlogModuleBlog extends Controller {
    private $id = 'd_blog_module';
    private $route = 'extension/d_blog_module/category';
    private $sub_versions = array('lite', 'light', 'free');
    private $mbooth = '';
    private $prefix = '';
    private $config_file = '';
    private $error = array();
    private $debug = false;
    private $setting = array();

	public function index() {
        $this->load->model('extension/module/d_blog_module');
        $this->load->model('extension/d_blog_module/category');
        $this->load->model('extension/d_blog_module/post');
        $this->load->model('tool/image');

        $styles = array(
            'd_blog_module/d_blog_module.css',
            'd_blog_module/bootstrap.css',
        );

        $scripts = array(
            'd_blog_module/category.js'
        );

        $this->config_file = $this->model_extension_module_d_blog_module->getConfigFile($this->id, $this->sub_versions);
        $this->setting = $this->model_extension_module_d_blog_module->getConfigData($this->id, $this->id . '_setting', $this->config->get('config_store_id'), $this->config_file);

        $this->load->language('extension/d_blog_module/blog');

        if (!empty($this->request->get['category_id'])) {
            $category_id = $this->request->get['category_id'];
        } else {
            $category_id = 0;
        }

        $layout_type = $this->setting['category']['layout_type'];
        $this->load->config('d_blog_module_layout/' . $layout_type);
        $layout_type = $this->config->get('d_blog_module_layout');
        $data['layout_template'] = $layout_type['template'];
        $layout = $this->setting['category']['layout'];

        if (isset($layout_type['styles'])) {
            $styles = array_merge($layout_type['styles'], $styles);
        }

        if (isset($layout_type['scripts'])) {
            $scripts = array_merge($layout_type['scripts'], $scripts);
        }

        $data['custom_style'] = $this->setting['design']['custom_style'];

        $categories = $this->model_extension_d_blog_module_category->getCategories(0);

        $data['categories'] = [];

        if($categories){
            foreach($categories as $category){
                $filter_data = array('filter_category_id' => $category['category_id'], 'limit' => 3, 'start' => 0);

                $posts = $this->model_extension_d_blog_module_post->getPosts($filter_data);
                $categoryPosts = [];
                
                $new_row = false;
                if ($posts) {
                    $post_thumb = $this->setting['post_thumb'];
                    $data['post_thumb'] = $post_thumb;
        
                    $row_count = count($layout);
                    $row = 0;
                    $col = 0;
        
                    foreach ($posts as $post) {
                        if (isset($layout[$row])) {
                            $col_count = $layout[$row];
                        } else {
                            $row = 0;
                            $col_count = $layout[$row];
                        }
        
                        $categoryPosts[] = array(
                            'post'      => $this->load->controller('extension/d_blog_module/post/thumb', $post['post_id']),
                            'col_count' => $col_count,
                            'animate'   => $this->setting['post_thumb']['animate'],
                            'col'       => ($col_count) ? round(12 / $col_count) : 12,
                            'row'       => $new_row
                        );
        
                        $col++;
                        $new_row = false;
                        if ($col >= $col_count) {
                            $col = 0;
                            $row++;
                            $new_row = true;
                        }
                    }
                }
            
                $data['categories'][] = [
                    'title' => $category['title'],
                    'href'  => $this->url->link('extension/d_blog_module/category', 'category_id=' . $category['category_id'], 'SSL'),
                    'class' => $category['category_id'] == $category_id ? 'class="active"' : '',
                    'posts' => $categoryPosts
                ];
            }
        }

        $data['text_empty'] = $this->language->get('text_empty');
        $data['show_all_text'] = $this->language->get('show_all_text');
        $data['post_details_text'] = $this->language->get('post_details_text');

        //breadcrumbs
        $data['breadcrumbs'] = [];
        $data['breadcrumbs'][] = ['text' => $this->language->get('text_home'), 'href' => $this->url->link('common/home'), '', 'SSL'];
        $data['breadcrumbs'][] = ['text' => 'Блог', 'href' => $this->url->link('extension/d_blog_module/blog'), '', 'SSL'];

        $this->document->setTitle($this->language->get('meta_title'));
        $this->document->setDescription($this->language->get('meta_description'));
        $this->document->setKeywords($this->language->get('meta_keyword'));

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');
        $data['menu'] = $this->load->controller('extension/d_blog_module/aside');

        $this->response->setOutput($this->model_extension_d_opencart_patch_load->view('extension/d_blog_module/blog', $data));
    }
}