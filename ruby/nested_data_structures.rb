membership = {
  platinum: {
    code_name: 'A',
    benefits: [
      "VIP Limo",
      "Monthly Stipend",
      "Hot Tub Access",
      "Concierge Service"
    ],  
    amenities: {
      air_conditioning: true,
      valet: true,
      dry_cleaning: true,
      house_cleaners: true
    }
  },
  gold: {
    code_name: 'B',
    benefits: [
      "Monthly Stipend",
      "Hot Tub Access",
      "Concierge Service"
    ],
    amenities: {
      air_conditioning: true,
      valet: false,
      dry_cleaning: true,
      house_cleaners: true 
    }
  },
  silver: {
    code_name: 'C',
    benefits: [
      "Hot Tub Access",
      "Concierge Service"
    ],
    amenities: {
      air_conditioning: true,
      valet: false,
      dry_cleaning: true,
      house_cleaners: false      
    }
  },
  bronze: {
    code_name: 'D',
    benefits: [
      "Concierge Service"
    ],
    amenities: {
      air_conditioning: true,
      valet: false,
      dry_cleaning: false,
      house_cleaners: false
    }
  }
}
p membership[:bronze][:amenities][:dry_cleaning]
p membership[:platinum][:code_name]
p membership[:gold][:benefits][1]
p membership[:silver][:amenities][:house_cleaners]