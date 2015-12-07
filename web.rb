require 'sinatra'
require 'rdiscount'

FACTORS = [
  'Codebase', 'Dependencies', 'Config', 'Backing Services', 'Build, Release, Run',
  'Processes', 'Disposability', 'Dev/Prod Parity', 'Logs', 'Audit'
]
# FACTORS_SLUGS = %w(
#   codebase dependencies config backing-services build-release-run
#   processes disposability dev-prod-parity logs audit
# )

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

  def slugify(title)
    title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end
  
  def romanize(number)
    case number
      when 1; 'I'
      when 2; 'II'
      when 3; 'III'
      when 4; 'IV'
      when 5; 'V'
      when 6; 'VI'
      when 7; 'VII'
      when 8; 'VIII'
      when 9; 'IX'
      when 10; 'X'
      else ''
    end
  end
end

not_found do
  'Page not found'
end