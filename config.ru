$stdout.sync = true

use Rack::Static,
  :urls => ["/css", "/js", "/img", "/fonts", "/projects.json"],
  :root => "."

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('index.html', File::RDONLY)
  ]
}