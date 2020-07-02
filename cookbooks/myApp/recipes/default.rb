include_recipe 'poise-javascript'

# For netstat in serverspec.
package 'net-tools'

application '/opt/node1' do
  file '/opt/node1/main.js' do
    content <<-EOH
require('http').createServer(function(request, response) {
  response.end('Hello world!\\n');
}).listen(8000);
EOH
  end
  javascript_service 'main.js'
end


include_recipe '::express'