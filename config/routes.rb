TinymceFm::Engine.routes.draw do
  get 'tinymce_managed.js', :to => 'tinymce_fm/filemanager#tinymce_managed_js', :as => :tinymce_combine_js
  get 'tinymce_managed.css', :to => 'tinymce_fm/filemanager#tinymce_managed_css', :as => :tinymce_combine_css
end
Rails.application.routes.draw do
  get ':controller/tinymce_filemanager/list_images', :action => 'tinymce_filemanager_list_images'
  post ':controller/tinymce_filemanager/upload_image', :action => 'tinymce_filemanager_upload_image'
  post ':controller/tinymce_filemanager/destroy_image', :action => 'tinymce_filemanager_destroy_image'
  post ':controller/tinymce_filemanager/create_images_folder', :action => 'tinymce_filemanager_create_images_folder'

  get ':controller/tinymce_filemanager/list_media', :action => 'tinymce_filemanager_list_media'
  post ':controller/tinymce_filemanager/upload_media', :action => 'tinymce_filemanager_upload_media'
  post ':controller/tinymce_filemanager/destroy_media', :action => 'tinymce_filemanager_destroy_media'
  post ':controller/tinymce_filemanager/create_media_folder', :action => 'tinymce_filemanager_create_media_folder'

  get ':controller/tinymce_filemanager/list_links', :action => 'tinymce_filemanager_list_links'
end
