# frozen_string_literal: true

class Pages::HomeView < ApplicationView
  include Phlex::Rails::Helpers::ImageTag

  def view_template
    div class: 'flex justify-center pt-24 pb-12 px-2 sm:px-0' do
      image_tag 'ruby-on-rails.png', size: '480x188', alt: 'Rails logo'
    end

    p class: 'text-center text-lg' do
      plain '🐳 Learn the Docker fundamentals at:'
      strong do
        a class: 'border-b border-gray-900 mb-1', href: 'https://diveintodocker.com?ref=docker-rails-example' do
          'https://diveintodocker.com'
        end
      end
    end
  end
end
