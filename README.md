# RSPEC INTRO

* This is a simple demonstration of testing with RSpec.

* This is an app that shows the tv programs available at various times and the age restrictions for the programs.

Running the app:

Run the following in your terminal:

```
git clone git@github.com:elibiz443/rspec-intro.git
```
```
bundle
```
```
bin/rspec
```
### Voilà 

## Building The App From Scratch:

* Open terminal by CTRL + ALT + T

* Run the following in terminal:
```
mkdir rspec-intro
```
```
cd rspec-intro
```
```
mkdir lib
```
```
cd lib
```
```
touch myapp.rb
```
```
nano myapp.rb
```

Copy and paste the following, then save by CTRL + O & exit with CTRL + X:
```
class Myapp
  def initialize(tv_programs)
    @tv_programs = ["News", "National Geographics", "Cartoon Network", "Movie", "Music"]
  end

  def age_restriction(age)
    @age = age
    case @age
    when 2..12
      return @tv_programs[2]
    when 13..19
      return @tv_programs[0, 2]
    when 20..200
      return @tv_programs[0, 5]
    else
      return "Error"
    end
  end

  def program(program_time)
    @program_time = program_time 

    case @program_time
    when 7...10
      return @tv_programs[0]
    when 10...13
      return @tv_programs[1]
    when 13...17
      return @tv_programs[0]
    when 17...20
      return @tv_programs[2]
    when 20...23
      return @tv_programs[0]
    when 23, 0, 1
      return @tv_programs[3]
    when 2...7
      return @tv_programs[4]
    end
  end
end
```
Continue in terminal:
```
cd ..
```
```
bundle init
```
Open Gemfile:
```
nano Gemfile
```
Copy and paste the following in Gemfile. Save by CTRL + O & exit with CTRL + X:
```
gem 'rspec'
```
Run in terminal:
```
bundle binstubs rspec-core
```
The above adds bin folder with rspec executables.

Continue in terminal:
```
bin/rspec --init
```
```
nano .rspec
```
Copy and paste the following, then save by CTRL + O & exit with CTRL + X:
```
--format documentation
```
Continue in terminal:
```
cd spec
```
```
touch myapp_spec.rb
```
```
nano myapp_spec.rb
```
Copy and paste the following, then save by CTRL + O & exit with CTRL + X:
```
require "myapp"

describe Myapp do
  context "When given age" do
    context "If it's a kid" do
      it "returns program for kids" do
        expect(Myapp.new("").age_restriction(10)).to eq("Cartoon Network")
      end
    end
    context "If it's a teenager" do
      it "returns program for Teenagers" do
        expect(Myapp.new("").age_restriction(19)).to include("News", "National Geographics")
      end
    end
    context "If it's an Grown Up" do
      it "returns program for the aged" do
        expect(Myapp.new("").age_restriction(20)).to include("News", "National Geographics", "Cartoon Network", "Movie", "Music")
      end
    end
  end

  context "When given time" do
    context "If time is between 7 & 10" do
      it "returns News" do
        expect(Myapp.new("").program(7)).to eq("News")
      end
    end

    context "If time is between 10 & 13" do
      it "returns National Geographic" do
        expect(Myapp.new("").program(10)).to eq("National Geographics")
      end
    end

    context "If time is between 13 & 17" do
      it "returns News" do
        expect(Myapp.new("").program(13)).to eq("News")
      end
    end

    context "If time is between 17 & 20" do
      it "returns Cartoon Network" do
        expect(Myapp.new("").program(17)).to eq("Cartoon Network")
      end
    end

    context "If time is between 20 & 23" do
      it "returns News" do
        expect(Myapp.new("").program(20)).to eq("News")
      end
    end

    context "If time is between 23 & 2" do
      it "returns Movie" do
        expect(Myapp.new("").program(23)).to eq("Movie")
      end
    end

    context "If time is between 2 & 7" do
      it "returns Music" do
        expect(Myapp.new("").program(2)).to eq("Music")
      end
    end
  end
end
```
Continue in terminal:
```
cd ..
```
Run the tests using:
```
bin/rspec
```
### Congrats
                             \
                            / \
                           /   \
                          /    |
                         /     |
                        /     /
                      _/     /
    ___________      /      /
          |   |_____/      /_________
          |   |    /      /\___      \
          |   |   /        /  /      |
          |   |  /        /__/_______/__
          |   | |     ___ /             \
          /   | |    /  /               |
         /    | |   /__/________________/
        /     | |      ___/           \
       /  ___ | |     /  /            |
      /  [___]|_|    /__/_____________/
     /_____/     \    / /          |   
                  \  /_/___________/
                   \_________/

### Modify the app and perform more tests
