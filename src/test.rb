require('ruby-progressbar')

progressbar = ProgressBar.create(:smoothing => 0.6)



# num = [1,2,3,4,5]



# 50.times { progressbar.increment }

# puts progressbar

0.step(100, 5) do |i|
    printf("\rProgress: [%-20s]", "=" * (i/5))
    sleep(0.08)
  end