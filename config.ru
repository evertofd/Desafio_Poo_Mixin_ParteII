require 'rack'
class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/index'
      [202, { 'Content-Type' => 'text/html' }, ['<meta charset="UTF-8"><h1> "Estás en el Index!" </h1>']]
    elsif env['REQUEST_PATH'] == '/otro'
      [202, { 'Content-Type' => 'text/html' }, ['<h1> "Estás en otro landing!" </h1>']]
    else
      [404, { 'Content-Type' => 'text/html' }, [File.read("404.html")]]
    end
  end
end
run MiPrimeraWebApp.new
