import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure GlobalBiogeochemicalCyclePackage where
  carbonCycleQuantified : Prop
  nitrogenCycleQuantified : Prop
  phosphorusCycleQuantified : Prop
  humanPerturbationIncluded : Prop
  feedbackMechanismsModeled : Prop

structure GlobalBiogeochemicalCycleEvidence (C : GlobalBiogeochemicalCyclePackage) where
  carbonCycleQuantifiedClosed : C.carbonCycleQuantified
  nitrogenCycleQuantifiedClosed : C.nitrogenCycleQuantified
  phosphorusCycleQuantifiedClosed : C.phosphorusCycleQuantified
  humanPerturbationIncludedClosed : C.humanPerturbationIncluded
  feedbackMechanismsModeledClosed : C.feedbackMechanismsModeled

def GlobalBiogeochemicalCycleClosed (C : GlobalBiogeochemicalCyclePackage) : Prop :=
  C.carbonCycleQuantified ∧ C.nitrogenCycleQuantified ∧
  C.phosphorusCycleQuantified ∧ C.humanPerturbationIncluded ∧
  C.feedbackMechanismsModeled

theorem global_biogeochemical_cycle_closed_from_evidence (C : GlobalBiogeochemicalCyclePackage)
    (Ev : GlobalBiogeochemicalCycleEvidence C) : GlobalBiogeochemicalCycleClosed C := by
  exact And.intro Ev.carbonCycleQuantifiedClosed
    (And.intro Ev.nitrogenCycleQuantifiedClosed
      (And.intro Ev.phosphorusCycleQuantifiedClosed
        (And.intro Ev.humanPerturbationIncludedClosed Ev.feedbackMechanismsModeledClosed)))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse