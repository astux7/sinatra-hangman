get '/answer' do
  erb :answer_form
end

post '/answer' do
  clean_flash
  form do
    filters :strip, :downcase
    field :answer, :present => true, :length => 1..20
    field :answer_comfirmation, :present => true, :length => 1..20
    combination :same_word, :fields => ["answer", "answer_comfirmation"], :same => true
    field :level, :present => true#, :value =>["easy","medium","hard"]
  end

  if form.failed?
    flash[:errors] = "Words invalid or not same"
  else
    hangman_setup(params[:level])
    @blanket_view = hangman_start(params[:level].to_sym, params[:answer].downcase)
    redirect to('/guess')
  end
  erb :answer_form
end