if Rails.env.development?
  ActiveRecord::Base.transaction do
    ###########
    # Facility
    blue_alps_ski_camp = Facility.create!(name: "Blue Alps Ski Camp")

    ###########
    # Patient
    patient = Patient.create!(
      first_name: "Thomas",
      last_name: "Schudel",
      mr: "30997",
      dob: 43.years.ago,
      gender: 1,
      facility: blue_alps_ski_camp
    )

    ###########
    # Admission
    first_admission = Admission.create!(
      patient: patient,
      moment: DateTime.new(2018, 2, 18, 17, 7, 0)
    )

    ###########
    # Diagnosis for Admission
    first_admission.diagnoses.create!(
      code_system: "S82",
      code: "101",
      description: "fracture of upper end of the right tibia"
    )

    ###########
    # Symptoms
    first_admission.symptoms.create!([
      { description: "severe pain" },
      { description: "swelling" },
      { description: "limited bending of the joint" },
    ])

    ###########
    # Observations
    first_admission.observations.create!(description: "no soft tissues were damaged")

    ###########
    # Allergies
    allergies = Allergy.create!([
      { description: "hypersensitivity to aspirin or NSAIDs" },
      { description: "gluten intolerance" }
    ])

    patient.allergies << allergies

    ###########
    # Cronic Conditions
    patient.cronic_conditions.create!(
      code_system: "J45",
      description: "Asthma"
    )

    ###########
    # Order Frequency
    four_hours = OrderFrequency.create!(value: "4", unit: :hour)
    six_hours = OrderFrequency.create!(value: "6", unit: :hour)

    ###########
    # Medication Orders
    patient.medications.create!([
      { name: "Acetamiphen", dosage: 500, route: 1, frequency: four_hours, necessity: "relieve pain" },
      { name: "Naproxen", dosage: 500, route: 1, frequency: six_hours, necessity: "relieve swelling" }
    ])

    ###########
    # Diagnostic Procedures
    patient.diagnostic_procedures.create!([
      { description: "exploratory radiography", moment: DateTime.new(2018, 2, 18, 17, 15) }
    ])

    ###########
    # Patient Diagnoses
    patient.diagnoses.create!(code_system: "S82", code: "101A", description: "closed fracture in the right tibia")

    ###########
    # Patient Treatments
    patient.treatments.create!(description: "temporary bracing the right leg", necessity: "restrict the motion")
  end
end
