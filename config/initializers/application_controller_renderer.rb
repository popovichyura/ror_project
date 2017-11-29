# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end
#
 ActionView::Base.field_error_proc = proc do |html_tag, instance|
   if html_tag =~ /^<label/
     %(<div class="field_with_errors">#{html_tag}</div>).html_safe
   else
     %(<div class="field_with_errors">#{html_tag}<label for="#{instance.send(:tag_id)}" class="message">#{instance.error_message.first}</label></div>).html_safe
   end
 end