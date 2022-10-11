require 'cucumber'
require 'httparty'
require 'rspec'

# Para carregar o arquivo de spec_rest dentro do projeto
require_relative 'spec_helper/spec_rest'

# Fazendo o load de arquivo
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")


# Para tornar o método padrão dentro do projeto

World(REST)