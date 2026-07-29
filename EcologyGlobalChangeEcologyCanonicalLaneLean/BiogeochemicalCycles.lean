import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure BiogeochemicalCyclesPackage where
  carbonCycleModel : Prop
  nitrogenCycleModel : Prop
  phosphorusCycleModel : Prop
  couplingDynamics : Prop
  humanForcing : Prop

structure BiogeochemicalCyclesEvidence (C : BiogeochemicalCyclesPackage) where
  carbonCycleModelClosed : C.carbonCycleModel
  nitrogenCycleModelClosed : C.nitrogenCycleModel
  phosphorusCycleModelClosed : C.phosphorusCycleModel
  couplingDynamicsClosed : C.couplingDynamics
  humanForcingClosed : C.humanForcing

def BiogeochemicalCyclesClosed (C : BiogeochemicalCyclesPackage) : Prop :=
  C.carbonCycleModel ∧ C.nitrogenCycleModel ∧ C.phosphorusCycleModel ∧
  C.couplingDynamics ∧ C.humanForcing

theorem biogeochemical_cycles_closed_from_evidence (C : BiogeochemicalCyclesPackage)
    (E : BiogeochemicalCyclesEvidence C) : BiogeochemicalCyclesClosed C := by
  exact And.intro E.carbonCycleModelClosed
    (And.intro E.nitrogenCycleModelClosed
      (And.intro E.phosphorusCycleModelClosed
        (And.intro E.couplingDynamicsClosed E.humanForcingClosed)))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse