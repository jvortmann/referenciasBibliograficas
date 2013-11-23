class CitacaosController < ApplicationController
  before_action :set_citacao, only: [:show, :edit, :update, :destroy]

  # GET /citacaos
  # GET /citacaos.json
  def index
    @citacaos = Citacao.all
  end

  # GET /citacaos/1
  # GET /citacaos/1.json
  def show
  end

  # GET /citacaos/new
  def new
    @citacao = Citacao.new
    @livros = Livro.all
  end

  # GET /citacaos/1/edit
  def edit
    @livros = Livro.all
  end

  # POST /citacaos
  # POST /citacaos.json
  def create
    @citacao = Citacao.new(citacao_params)

    respond_to do |format|
      if @citacao.save
        format.html { redirect_to @citacao, notice: 'Citacao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @citacao }
      else
        format.html { render action: 'new' }
        format.json { render json: @citacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /citacaos/1
  # PATCH/PUT /citacaos/1.json
  def update
    respond_to do |format|
      if @citacao.update(citacao_params)
        format.html { redirect_to @citacao, notice: 'Citacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @citacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citacaos/1
  # DELETE /citacaos/1.json
  def destroy
    @citacao.destroy
    respond_to do |format|
      format.html { redirect_to citacaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citacao
      @citacao = Citacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def citacao_params
      params.require(:citacao).permit(:trecho, :pagina_inicial, :palavras_chave, :livro_id)
    end
end
