class ImportsController < ApplicationController

  def self.initializeStates
    if State.where(:name => "Slovensko").first.nil?
          if State.new(:name => "Slovensko", :state_id => 1).save
            puts "State : Slovensko sucessfully inicialized"
          else
            puts "State : Slovensko not inicialized !!!"
          end
      end
  end

  def self.initializeCounties
    state = State.where(:name => "Slovensko").first
    counties = ["Bratislavsky", "Kosicky", "Banskobystricky", "Nitriansky", "Presovsky", "Trenciansky", "Trnavsky", "Zilinsky"]

    counties.each_with_index do |c, index|
      initCounty(c, index+1, state)
    end

  end

  def self.initializeRegions
    @index = 0

    bratislavsky_kraj = County.where(:name => "Bratislavsky").first
    bratislavsky_kraj_regions = ["Bratislava", "Malacky", "Pezinok", "Senec"]

    bratislavsky_kraj_regions.each do |r|
      initRegion(r, index += 1, bratislavsky_kraj)
    end

    banskobystricky_kraj = County.where(:name => "Banskobystricky").first
    banskobystricky_kraj_regions = ["Banska Bystrica", "Banska Stiavnica", "Brezno", "Detva", "Krupina", "Lucenec", "Poltar", "Revuca", "Rimavska Sobota", "Velky Krtis", "Zarnovica", "Ziar nad Hronom", "Zvolen"]

    banskobystricky_kraj_regions.each do |r|
      initRegion(r, index += 1, banskobystricky_kraj)
    end

    kosicky_kraj = County.where(:name => "Kosicky").first
    kosicky_kraj_regions = ["Gelnica", "Kosice", "Kosice okolie", "Michalovce", "Roznava", "Sobrance", "Spisska Nova Ves", "Trebisov"]

    kosicky_kraj_regions.each do |r|
      initRegion(r, index += 1, kosicky_kraj)
    end

    nitriansky_kraj = County.where(:name => "Nitriansky").first
    nitriansky_kraj_regions = ["Komarno", "Levice", "Nitra", "Nove Zamky", "Sala", "Topolcany", "Zlate Moravce"]

    nitriansky_kraj_regions.each do |r|
      initRegion(r, index += 1, nitriansky_kraj)
    end

    presovsky_kraj = County.where(:name => "Presovsky").first
    presovsky_kraj_regions = ["Bardejov", "Humenne", "Kezmarok", "Levoca", "Medzilaborce", "Poprad", "Presov", "Sabinov", "Snina", "Stara Lubovna", "Stropkov", "Svidnik", "Vranov nad Toplou"]

    presovsky_kraj_regions.each do |r|
      initRegion(r, index += 1, presovsky_kraj)
    end

    trenciansky_kraj = County.where(:name => "Trenciansky").first
    trenciansky_kraj_regions = ["Banovce nad Bebravou", "Ilava", "Myjava", "Nove Mesto nad Vahom", "Partizanske", "Povazska Bystrica", "Prievidza", "Puchov", "Trencin"]

    trenciansky_kraj_regions.each do |r|
      initRegion(r, index += 1, trenciansky_kraj)
    end

    trnavsky_kraj = County.where(:name => "Trnavsky").first
    trnavsky_kraj_regions = ["Dunajska Streda", "Galanta", "Hlohovec", "Piestany", "Senica", "Skalica", "Trnava"]

    trnavsky_kraj_regions.each do |r|
      initRegion(r, index += 1, trnavsky_kraj)
    end

    zilinsky_kraj = County.where(:name => "Zilinsky").first
    zilinsky_kraj_regions = ["Bytca", "Cadca", "Dolny Kubin", "Kysucke Nove Mesto", "Liptovsky Mikulas", "Martin", "Namestovo", "Ruzomberok", "Turcianske Teplice", "Tvrdosin", "Zilina"]

    zilinsky_kraj_regions.each do |r|
      initRegion(r, index += 1, zilinsky_kraj)
    end

  end

  def self.initCounty(name, id, state)
      county =  County.new(:name => name, :county_id => id)
      county.state = state
      county.save
  end

  def self.initRegion(name, id, county)
    region =  Region.new(:name => name, :region_id => id)
    region.county = county
    region.save
  end
end
