import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure GlobalBiodiversityChangePackage where
  taxonomicGroup : Type u
  extinctionRate : Float
  habitatLoss : Prop
  invasiveSpecies : Prop
  climateSensitivity : Prop

structure GlobalBiodiversityChangeEvidence (G : GlobalBiodiversityChangePackage) where
  extinctionRateClosed : G.extinctionRate > 0
  habitatLossClosed : G.habitatLoss
  invasiveSpeciesClosed : G.invasiveSpecies
  climateSensitivityClosed : G.climateSensitivity

def GlobalBiodiversityChangeClosed (G : GlobalBiodiversityChangePackage) : Prop :=
  G.extinctionRate > 0 ∧ G.habitatLoss ∧ G.invasiveSpecies ∧ G.climateSensitivity

theorem global_biodiversity_change_closed_from_evidence
    (G : GlobalBiodiversityChangePackage) (E : GlobalBiodiversityChangeEvidence G) :
    GlobalBiodiversityChangeClosed G := by
  exact And.intro E.extinctionRateClosed
    (And.intro E.habitatLossClosed
      (And.intro E.invasiveSpeciesClosed E.climateSensitivityClosed))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse