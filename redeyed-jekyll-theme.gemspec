# frozen_string_literal: true

Gem::Specification.new do |spec|
    spec.name          = "redeyed-jekyll-theme"
    spec.version       = "0.1.6"
    spec.authors       = ["Ragdata"]
    spec.email         = ["ragdata@redeyed-rpg.com"]

    spec.summary       = "(WIP) A versatile, responsive theme built for a site about Dungeons & Dragons.  Please DO NOT consider this to be anything close to a production release just yet."
    spec.homepage      = "https://github.com/RedEyed-RPG/redeyed-jekyll-theme"
    spec.license       = "MIT"

    spec.files         = `git ls-files -z`.split("\x0").select { |f|
        f.match(%r!^((_(data|drafts|includes|layouts|plugins|posts|sass)|assets|src)\/|_config|README|LICENSE)!i)
    }

    spec.metadata = {
        "bug_tracker_uri" => "https://github.com/RedEyed-RPG/redeyed-jekyll-theme/issues",
        "documentation_uri" => "https://github.com/RedEyed-RPG/redeyed-jekyll-theme/wiki",
        "homepage_uri" => "https://github.com/RedEyed-RPG/redeyed-jekyll-theme",
        "source_code_uri" => "https://github.com/RedEyed-RPG/redeyed-jekyll-theme",
        "wiki_uri" => "https://github.com/RedEyed-RPG/redeyed-jekyll-theme/wiki",
        "plugin_type" => "theme"
    }

    spec.add_development_dependency "bundler", ">= 1.6", "< 3.0"
    spec.add_development_dependency "rake", ">= 12.0", "< 13.0"

    spec.add_runtime_dependency "html-proofer", "~> 3", ">= 3.19"
    spec.add_runtime_dependency "jekyll", "~> 4.2"
    spec.add_runtime_dependency "jemoji", "~> 0.12"
    spec.add_runtime_dependency "jekyll-toc", "~> 0.17"
    spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
    spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.7"
    spec.add_runtime_dependency "jekyll-archives", "~> 2.2"
    spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
    spec.add_runtime_dependency "jekyll-mentions", "~> 1.6"
    spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
    spec.add_runtime_dependency "jekyll-spaceship", "~> 0.2"
    spec.add_runtime_dependency "jekyll-pluralize", "~> 0.0"
    spec.add_runtime_dependency "jekyll-contentblocks", "~> 1", ">= 1.2"
    spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.16"
    spec.add_runtime_dependency "jekyll-email-protect", "~> 1.1"
    spec.add_runtime_dependency "jekyll-material-icon-tag", "~> 1", ">= 1.1"
    spec.add_runtime_dependency "jekyll-tagging-related_posts", "~> 1.2"

end
