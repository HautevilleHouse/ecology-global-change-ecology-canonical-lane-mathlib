import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure BiodiversityErosionPackage where
  speciesExtinctionRate : Float
  habitatLoss : Float
  populationDecline : Float
  redListSpecies : Nat
  ecosystemFragmentation : Float

structure BiodiversityErosionEvidence (B : BiodiversityErosionPackage) where
  speciesExtinctionRateClosed : B.speciesExtinctionRate > 0.0
  habitatLossClosed : B.habitatLoss > 0.0
  populationDeclineClosed : B.populationDecline > 0.0
  redListSpeciesClosed : B.redListSpecies > 1000
  ecosystemFragmentationClosed : B.ecosystemFragmentation > 0.3

def BiodiversityErosionClosed (B : BiodiversityErosionPackage) : Prop :=
  B.speciesExtinctionRate > 0.0 ∧ B.habitatLoss > 0.0 ∧
  B.populationDecline > 0.0 ∧ B.redListSpecies > 1000 ∧
  B.ecosystemFragmentation > 0.3

theorem biodiversity_erosion_closed_from_evidence (B : BiodiversityErosionPackage) (E : BiodiversityErosionEvidence B) :
    BiodiversityErosionClosed B := by
  exact And.intro E.speciesExtinctionRateClosed
    (And.intro E.habitatLossClosed
      (And.intro E.populationDeclineClosed
        (And.intro E.redListSpeciesClosed E.ecosystemFragmentationClosed)))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse