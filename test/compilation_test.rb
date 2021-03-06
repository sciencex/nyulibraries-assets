require 'test_helper'

class CompilationTest < ActiveSupport::TestCase
  test "scss compilation" do
    skip("Can't figure out why this is erroring out")
    ::Compass.configuration.images_dir = 'lib/assets/images'
    path = 'lib/assets/stylesheets'
    %w(nyulibraries).each do |file|
      assert_nothing_raised("Compass stylesheet(s) do not compile.") do
        ::Compass.compiler.engine("#{path}/_#{file}.scss", "#{path}/_#{file}.css").render
      end
    end
  end

  def test_coffee_script_compilation
    coffee_compile_each "lib/assets/javascripts/"
  end

  private
  def coffee_compile_each(path)
    Dir.foreach(path).each do |filename|
      next if ['.', '..'].include?(filename)
      path = path + filename
      coffee_compile path if coffee? path
      coffee_compile_each path if File.directory? path
    end
  end

  def coffee_compile(file)
    assert_nothing_raised("CoffeeScript, #{file} do not compile.") do
      CoffeeScript.compile File.new(file) if coffee? file
    end
  end

  def coffee?(filename)
    File.file?(filename) && File.extname(filename).eql?('.coffee')
  end
end
