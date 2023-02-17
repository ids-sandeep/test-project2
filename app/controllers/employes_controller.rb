class EmployesController < ApplicationController
  
  # scope :order_by_name, -> { order(name: :asc) }

  def index
    @employes = Employe.all
    if params[:search].present?
      puts "Search query: #{params[:search]}"
      # @employes = Employe.where("name LIKE ?", "%#{params[:search]}%")
      @employes = Employe.where("name LIKE ? OR age LIKE ? OR description LIKE ? OR hobby LIKE ?", 
                          "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
      
    end

    if params[:sort].present?
      sort_columns = {
        "name" => "name",
        "age" => "age",
        "description" => "description"
        
      }
      
      sort_column = sort_columns[params[:sort]] || "name"
      sort_direction = params[:direction] == "desc" ? "desc" : "asc"
      
      @employes = @employes.order("#{sort_column} #{sort_direction}")
    else
      @employes = Employe.all
    end
  end

  def show
    @employe = Employe.find(params[:id])
  end

  def new
    @employe = Employe.new
  end

  def create
    @employe = Employe.create(employe_params)
    @employe.gender = params[:employe][:gender]
    if @employe.save
      redirect_to employes_path, notice: "Question successfully created."
    else
      render 'new'
    end
  end

  # def index
  #   if params[:sort]
  #     @employes = Employe.order(params[:sort])
  #   else
  #     @employes = Employe.all
  #   end
  # end

  def edit
    @employe = Employe.find(params[:id])
  end

  def update
    @employe = Employe.find(params[:id])
    @employe.gender = params[:employe][:gender]
    if @employe.update(employe_params)
      redirect_to employes_path,notice: "Question successfully updated."
    else
      render 'edit'
    end
  end

  def destroy
    @employe = Employe.find(params[:id])
    @employe.destroy
    redirect_to employes_path,notice: "Question successfully deleted."
  end


  private
  def employe_params
    params.require(:employe).permit(:name, :age, :salary, :position, :gender, {hobby:[]}, :description).tap do |whitelisted|
      whitelisted[:position] = nil if whitelisted[:position] == 'select'
    end
  end
end

  
