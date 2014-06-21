$stdout.sync = true

use Rack::Static,
  :urls => ["/assets/css", "/assets/js", "/assets/img", "/assets/spec", "/assets/images", "/assets/font","home.html"],
  :root => "."

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('gallery.html', File::RDONLY)
  ]
}

