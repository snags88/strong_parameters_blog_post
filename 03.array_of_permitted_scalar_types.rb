#=> our params hash
params = {
  :user => {:full_name => "Sir Mix A Lot",
            :groupie_ids => [1,2,3]
           }
}

#=> our permit method
params.require(:user).permit(:full_name, :groupie_ids => [])