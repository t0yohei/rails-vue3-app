class HomeController < ApplicationController
  def index
    @title = 'Home#index'
    @description = 'トップページ'
    @contents = get_contents
  end

  private

  def get_contents
    {
      outer_links: [
        {
          name: 'Qiitaページ',
          text: 'Qiita',
          url: 'https://qiita.com/t0yohei/items/d516fefaaad69b4022ec'
        },
        {
          name: 'ソースコード',
          text: 'GitHub',
          url: 'https://github.com/t0yohei/rails-vue-app'
        }
      ],
    }
  end
end
