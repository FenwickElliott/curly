Gem::Specification.new do |spec|
    spec.name          = "curly"
    spec.version       = '0.0.0'
    spec.authors       = ["Charles Fenwick Elliott"]
    spec.email         = ["Charles@FenwickElliott.io"]
  
    spec.summary       = "REST call handler"
    spec.description   = "A wrapper for making REST calls"
    spec.homepage      = "https://fenwickelliott.io"
    spec.license       = "MIT"
    spec.add_development_dependency "bundler", "~> 1.15"
    spec.add_development_dependency "pry", "~> 0.10"
    # spec.add_runtime_dependency "bloc_record", "0.0.4"
    spec.add_runtime_dependency "JSON", " ~>2.1"
  end