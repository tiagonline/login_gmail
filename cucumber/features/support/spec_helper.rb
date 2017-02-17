# encoding: utf-8
# !/usr/bin/env ruby

Dir[File.join(File.dirname(__FILE__), '../pages/*.rb')].each { |file| require file }

module Calculadora
  module Pages
    def salario
      Calculadora::Pages::SalarioPage.new
    end
  end
end
