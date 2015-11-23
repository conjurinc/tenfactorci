require 'sinatra'
require 'rdiscount'

get '/' do
  erb :home
end

get '/assessment' do
  erb :assessment
end

TOC = %w(codebase dependencies config backing-services build-release-run processes disposability dev-prod-parity logs audit)

get '/:factor' do |factor|
  halt 404 unless TOC.include?(factor)
  @factor = factor
  erb :factor
end

helpers do
  def render_markdown(file)
    RDiscount.new(File.read("content/#{file}.md")).to_html
  rescue Errno::ENOENT
    puts "No content for #{file}, skipping"
  end

  def render_prev(factor)
    idx = TOC.index(factor)
    return if idx == 0
    "<a href=\"./#{TOC[idx-1]}\">&laquo; Previous</a>"
  end

  def render_next(factor)
    idx = TOC.index(factor)
    return if idx == TOC.size-1
    "<a href=\"./#{TOC[idx+1]}\">Next &raquo;</a>"
  end
end

not_found do
  'Page not found'
end