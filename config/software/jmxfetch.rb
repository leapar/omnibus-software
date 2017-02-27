name "jmxfetch"

jmx_version = ENV["JMX_VERSION"]
if jmx_version.nil? || jmx_version.empty?
  default_version "0.12.0"
else
  default_version jmx_version
end

version "0.12.0" do
  source md5: "298159e24792962b393ea097e31c57a8"
end

source :url => "https://yumtesting.datad0g.com/testremi/jmxfetch-#{version}-jar-with-dependencies.jar"

relative_path "jmxfetch"

build do
  ship_license "https://raw.githubusercontent.com/DataDog/jmxfetch/master/LICENSE"
  mkdir "#{install_dir}/agent/checks/libs"
  copy "jmxfetch-*-jar-with-dependencies.jar", "#{install_dir}/agent/checks/libs"
end
