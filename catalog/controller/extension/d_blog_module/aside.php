<?php
class ControllerExtensionDBlogModuleAside extends Controller {
	public function index() {
        $this->load->model('extension/d_blog_module/category');
        $this->load->model('tool/image');

        if (!empty($this->request->get['category_id'])) {
            $category_id = $this->request->get['category_id'];
        } else {
            $category_id = 0;
        }

        $categories = $this->model_extension_d_blog_module_category->getCategories(0);

        $data['categories'] = [];
        $data['category'] = 0;

        if($categories){
            foreach($categories as $category){
                if ($category['image']) {
                    $thumb = $this->model_tool_image->resize($category['image'], 30, 30);
                } else {
                    $thumb = $this->model_tool_image->resize('placeholder.png', 30, 30);
                }

                $data['categories'][] = [
                    'id' => $category['category_id'],
                    'image' => $thumb,
                    'title' => $category['title'],
                    'href'  => $this->url->link('extension/d_blog_module/category', 'category_id=' . $category['category_id'], 'SSL'),
                    'class' => $category['category_id'] == $category_id ? 'class="active"' : ''
                ];

                if($category['category_id'] == $category_id){
                    $data['category'] = [
                        'id' => $category['category_id'],
                        'image' => $thumb,
                        'title' => $category['title'],
                        'href'  => $this->url->link('extension/d_blog_module/category', 'category_id=' . $category['category_id'], 'SSL'),
                        'class' => $category['category_id'] == $category_id ? 'class="active"' : ''
                    ];
                }
            }

            if(!$data['category']){
                $data['category'] = $data['categories'][0];
            }
        }

        return $this->load->view('extension/d_blog_module/aside', $data);
    }
}