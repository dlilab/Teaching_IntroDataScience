# An optional custom script to run before Hugo builds your site.
# You can delete it if you do not need it.

# print(getwd())

system("cd static/lectures; make")

# it seems that rmarkdown rolled back to use absolute path!!
hfiles = list.files("static/lectures", "presentation.html", recursive = T, full.names = T)
xfun::gsub_files(hfiles, pattern = "/Users/dli/Box Sync/Teaching/IntroDataScience/static/lectures", 
                 replacement = "..")
