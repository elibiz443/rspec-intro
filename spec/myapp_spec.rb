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
