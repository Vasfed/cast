require 'rbconfig'
require File.expand_path("../casty.#{RbConfig::CONFIG['DLEXT']}", __FILE__)

%w{ tempfile preprocessor node node_list c_nodes c.tab parse to_s inspect version}.each{|f|
  require "casty/#{f}"
}