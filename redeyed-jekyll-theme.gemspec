# frozen_string_literal: true

Gem::Specification.new do |spec|
    spec.name          = "redeyed-jekyll-theme"
    spec.version       = "0.2.0"
    spec.authors       = ["Ragdata"]
    spec.email         = ["ragdata@redeyed-rpg.com"]

    spec.summary       = "A versatile theme built for a site about Dungeons & Dragons"
    spec.homepage      = "https://github.com/RedEyed-RPG/redeyed-jekyll-theme"
    spec.license       = "MIT"

    spec.files         = `git ls-files -z`.split("\x0").select { |f|
        f.match(%r!^((_(data|drafts|includes|javascript|layouts|plugins|posts|sass)|assets|src)\/|_config|README|LICENSE|sw|manifest)!i)
    }

    spec.metadata = {
        "bug_tracker_uri" => "https://github.com/RedEyed-RPG/redeyed-jekyll-theme/issues",
        "documentation_uri" => "https://github.com/RedEyed-RPG/redeyed-jekyll-theme",
        "homepage_uri" => "https://github.com/RedEyed-RPG/redeyed-jekyll-theme",
        "source_code_uri" => "https://github.com/RedEyed-RPG/redeyed-jekyll-theme",
        "wiki_uri" => "https://github.com/RedEyed-RPG/redeyed-jekyll-theme/wiki",
        "plugin_type" => "theme"
    }

    spec.required_ruby_version = ">= 2.5"

    spec.add_development_dependency "bundler", ">= 1.6", "< 3.0"
    spec.add_development_dependency "rake", ">= 12.0", "< 13.0"

    spec.add_runtime_dependency "jekyll", "~> 4.2"
    spec.add_runtime_dependency "jemoji"
    spec.add_runtime_dependency "jekyll-toc"
    spec.add_runtime_dependency "jekyll-feed"
    spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
    spec.add_runtime_dependency "jekyll-archives", "~> 2.2"
    spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
    spec.add_runtime_dependency "jekyll-mentions"
    spec.add_runtime_dependency "jekyll-pluralize"
    spec.add_runtime_dependency "jekyll-paginate-v2"
    #spec.add_runtime_dependency "jekyll-include-cache"
    spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.16"
    spec.add_runtime_dependency "jekyll-email-protect"
    spec.add_runtime_dependency "jekyll-tagging-related_posts"
    spec.add_runtime_dependency "jekyll-spaceship", "~> 0.10"
    #spec.add_runtime_dependency
    #spec.add_runtime_dependency
    #spec.add_runtime_dependency
    #spec.add_development_dependency
end
