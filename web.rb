require 'sinatra'
require 'rdiscount'

FACTORS = %w(
  codebase dependencies config backing-services build-release-run
  processes disposability dev-prod-parity logs audit
)

get '/' do
  @factors = FACTORS
  erb :home
end

get '/scorecard' do
  erb :scorecard
end

helpers do
  def render_markdown(file)
    RDiscount.new(File.read("content/#{file}.md")).to_html
  rescue Errno::ENOENT
    puts "No content for #{file}, skipping"
  end
end

not_found do
  'Page not found'
end