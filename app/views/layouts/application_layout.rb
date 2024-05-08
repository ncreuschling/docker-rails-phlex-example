# frozen_string_literal: true

class ApplicationLayout < ApplicationView
  include Phlex::Rails::Layout

  def view_template(&block)
    doctype

    html lang: 'en' do
      head do
        title { "Docker + Rails" }

        csrf_meta_tags
        csp_meta_tag
        action_cable_meta_tag
        meta charset: 'utf-8'
        meta name: "viewport", content: "width=device-width,initial-scale=1"
        meta name: "description", content: "A production ready example Rails app that's using Docker and Docker Compose."

        stylesheet_link_tag "application", "data-turbo-track": "reload"
        javascript_include_tag data_turbo_track: "reload", defer: true

        link rel: "apple-touch-icon", sizes: "180x180", href: "/apple-touch-icon.png"
        link rel: "icon", type: "image/png", sizes: "32x32", href: "/favicon-32x32.png"
        link rel: "icon", type: "image/png", sizes: "16x16", href: "/favicon-16x16.png"
        link rel: "manifest", href: "/site.webmanifest"
        link rel: "mask-icon", href: "/safari-pinned-tab.svg", color: "#61b9d2"
        meta name: "msapplication-TileColor", content: "#da532c"
        meta name: "theme-color", content: "#ffffff"
      end

      body class: "flex flex-col h-screen justify-between" do
        div class: "bg-gray-700" do
          div class: "max-w-screen-lg mx-auto py-3 px-3 sm:px-6 lg:px-8" do
            div class: "flex items-center justify-between flex-wrap" do
              div class: "flex-1 flex items-center" do
                span class: "flex p-2 rounded-lg bg-gray-900" do
                  render InformationLogoSVG.new
                end
                p class: "ml-3 font-medium text-white truncate" do
                  plain 'Rails'
                  whitespace
                  plain Rails::VERSION::STRING
                  whitespace
                  plain 'and Ruby'
                  whitespace
                  plain ENV["RUBY_VERSION"]
                end
              end
              div class: "mt-2 order-3 w-full sm:mt-0 sm:w-auto" do
                div class: "rounded-md shadow-sm" do
                  span class:"flex items-center justify-center px-4 py-2 border border-transparent text-sm leading-5 font-medium rounded-md text-white bg-gray-500" do
                    plain 'RAILS_ENV ='
                    whitespace
                    plain Rails.env
                  end
                end
              end
            end
          end
        end

        main(class: "max-w-screen-lg mx-auto mb-auto", &block)

        footer class: "text-center mt-6 pb-6 h-10" do
          p class: "text-gray-500" do
            a class: "border-b mb-1", href: "https://github.com/ncreuschling/docker-rails-phlex-example" do
              plain "Coded"
            end
            whitespace
            plain 'with'
            whitespace
            render HeartLogoSVG.new
            whitespace
            plain "by"
            whitespace
            a class: "border-b mb-1", href: "https://github.com/ncreuschling/docker-rails-phlex-example" do
              plain 'Nicolai Reuschling'
            end
            whitespace
            plain "(inspired by"
            whitespace
            a class: "border-b mb-1", href: "https://github.com/nickjj/docker-rails-example" do
              plain 'Nick Janetakis'
            end
            plain ")"
          end
        end
      end
    end
  end
end
