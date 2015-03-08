#=> our params hash
params = {
  :user => {:full_name => "Sir Mix-A-Lot",
            :groupie_ids => [1,2,3],
            :songs => [{:name => "Baby Got Back",
                        :year => 1992
                       },
                       {:name => "Jump On It",
                        :year => 1996
                       }]
           }
}

#=> our permit method after the top level
params.require(:user).permit(:full_name, :groupie_ids => [], :songs => [])

#=> our final permit method
params.require(:user).permit(:full_name, :groupie_ids => [], :songs => [:name, :year])