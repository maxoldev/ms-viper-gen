require 'fileutils'
require 'date'

moduleName = ARGV[0]
destFolder = ARGV[1]
project = ARGV[2]
author = ARGV[3]
company = ARGV[4]

def createDirectory(path)
    unless File.directory?(path)
        FileUtils.mkdir_p(path)
    end
end

if moduleName != nil && destFolder != nil
    fileNames = ['Interactor.swift', 'Presenter.swift', 'Protocols.swift', 'View.swift', 'Wireframe.swift']

    createDirectory(destFolder)

    currentTime = DateTime.now
    date = currentTime.strftime("%d/%m/%y")
    year = currentTime.year
    
    fileNames.each do |fileName|
        initFile = File.join("ViperTemplates", fileName)
        
        text = File.read(initFile)

        newContent = text.gsub("{VIPER_MODULE_NAME}", moduleName)
        
        if project != nil
            newContent = newContent.gsub("{PROJECT}", project)
        end
        
        if author != nil
            newContent = newContent.gsub("{AUTHOR}", author)
        end
        
        if company != nil
            newContent = newContent.gsub("{COMPANY}", company)
        end
        
        newContent = newContent.gsub("{DATE}", date)
        newContent = newContent.gsub("{YEAR}", year.to_s)

        destFileName = moduleName + fileName
        destFilePath = File.join(destFolder, destFileName)
        
        # To write changes to the file, use:
        File.open(destFilePath, "w") {|file| file.puts newContent }
    end
    
    createDirectory(File.join(destFolder, "Views"))
else
    puts "Use: ruby ms-viper-gen.rb ModuleName DestinationFolder [ProjectName] [Author] [Company]"
end
