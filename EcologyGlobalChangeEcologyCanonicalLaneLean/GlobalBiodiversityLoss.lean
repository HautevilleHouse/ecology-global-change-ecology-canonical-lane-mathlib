import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure GlobalBiodiversityLossPackage where
  extinctionRates : Prop
  habitatLoss : Prop
  overexploitation : Prop
  invasiveSpecies : Prop
  pollution : Prop

structure GlobalBiodiversityLossEvidence (B : GlobalBiodiversityLossPackage) where
  extinctionRatesClosed : B.extinctionRates
  habitatLossClosed : B.habitatLoss
  overexploitationClosed : B.overexploitation
  invasiveSpeciesClosed : B.invasiveSpecies
  pollutionClosed : B.pollution

def GlobalBiodiversityLossClosed (B : GlobalBiodiversityLossPackage) : Prop :=
  B.extinctionRates ∧ B.habitatLoss ∧ B.overexploitation ∧
  B.invasiveSpecies ∧ B.pollution

theorem global_biodiversity_loss_closed_from_evidence (B : GlobalBiodiversityLossPackage)
    (E : GlobalBiodiversityLossEvidence B) : GlobalBiodiversityLossClosed B := by
  exact And.intro E.extinctionRatesClosed
    (And.intro E.habitatLossClosed
      (And.intro E.overexploitationClosed
        (And.intro E.invasiveSpeciesClosed E.pollutionClosed)))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse