
class TextInspectionsController < ApplicationController
  def new
    render 'new'
  end

  def create
    # render plain: "This route is text_inspections#create."

    # render plain: params.inspect

    # render plain: params[:text_inspection].inspect

    # render plain: params[:text_inspection][:user_text]

    @text = params[:text_inspection][:user_text]

    # render plain: @text

    # @word_count = @text.split(" ").length
    # render plain: @word_count

    @word_count = @text.split(" ").length

    @seconds = 0.00
    @seconds = (@word_count * 60) / 275

    # @words = @text.split(" ").frequency
    # array_words = @text.split(" ")
    # @words = array_words.frequency
    words = @text.split(" ")
    words_count = {}
    words.each do |word|
      if words_count.has_key?(word.to_sym)
        words_count[word.to_sym] += 1
      else
        words_count[word.to_sym] = 1
      end
    end

    # (no funciona) @words = @words.sort_by{|key, value| -value}
    # (no funciona) @words = @words.sort_by{|key, value| value[1]<=>key[1]}
    @words = words_count.sort_by{ |key, value| value }.reverse

    @words = @words.first(10)

    render "results"
  end
end
