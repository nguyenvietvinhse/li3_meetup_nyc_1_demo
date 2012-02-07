pkgs = value_for_platform(
  "default" => ['gearman-job-server']
)

pkgs.each do |pkg|
  package pkg
end
