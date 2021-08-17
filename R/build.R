# An optional custom script to run before Hugo builds your site.
# You can delete it if you do not need it.

# print(getwd())



# it seems that rmarkdown rolled back to use absolute path!!
hfiles = list.files("static/lectures", "presentation.Rmd", recursive = T, full.names = T)

if(length(hfiles)){
  files = cbind(hfiles, gsub('.Rmd$', '.html', hfiles))
  for(i in 1:nrow(files)){
    if (!file.exists(files[i, 2]) || file_test('-nt', files[i, 1], files[i, 2])){
      # system("cd static/lectures; make")
      rmarkdown::render(files[i, 1])
      xfun::gsub_files(files[i, 2], pattern = "/Users/dli/Box Sync/Teaching/IntroDataScience/static/lectures", 
                       replacement = "..")
    }
  }
}


