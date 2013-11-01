task :default => :bin

desc "Ejecutar las espectativas de la clase fraccion"
task :bin do
   sh "rspec -I. spec/fraccion_spec.rb"
end

desc "Ejecutar con documentacion"
task :test do
  sh "rspec -I. spec/fraccion_spec.rb --format documentation"
end

desc "Ejecutar con formato html"
task :thtml do
  sh "rspec -I. spec/fraccion_spec.rb --format html"
end
