class AddImageToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :image, :string
    Movie.update_all(image:"https://cdn.pixabay.com/photo/2016/06/18/17/42/image-1465348_960_720.jpg")
  end
end
