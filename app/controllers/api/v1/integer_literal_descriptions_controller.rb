class Api::V1::IntegerLiteralDescriptionsController < ApplicationController
  def index
    title = 'IntegerLiteralDescriptions#index'
    description = '整数リテラルの分類表'
    contents = get_integer_literals
    result_values = {
      title: title,
      description: description,
      contents: contents
    }
    render json: result_values
  end

  private

  def get_integer_literals
    [
      {
        name: '10進数',
        english: 'decimal',
        sample: '42',
        usage: '数値'
      },
      {
        name: '2進数',
        english: 'binary digits',
        sample: '0b0001',
        usage: 'ビット演算など'
      },
      {
        name: '8進数',
        english: 'octal',
        sample: '0o777',
        usage: 'ファイルのパーミッションなど'
      },
      {
        name: '16進数',
        english: 'hexadecimal, hex',
        sample: '0xEEFF',
        usage: '文字のコードポイント、RGB値など'
      }
    ]
  end
end
