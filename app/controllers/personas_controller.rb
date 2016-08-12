class PersonasController < ApplicationController
  def index
    @personas = Persona.all
  end  

  def show
    @personas = Persona.find(params[:id])
  end


  def new
    @personas = Persona.new
  end
  
  def edit
    @personas = Persona.find(params[:id])
  end
    
  def create
    @personas = Persona.new(personas_params)
      
    if  @personas.save
      redirect_to @personas
    else
      render 'new'
    end
  end
  
  def update
    @personas = Persona.find(params[:id])
    
    if @personas.update(personas_params)
      redirect_to @personas
    else
      render 'edit'
    end  
  end
  
  def destroy
    @personas = Persona.find(params[:id])
    @personas.destroy

    redirect_to personas_path
  end


  private
    def personas_params
      params.require(:personas).permit(:Nombre, :Email, :Telefono)
    end

end
