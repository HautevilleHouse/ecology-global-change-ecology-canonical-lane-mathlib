import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure DynamicVegetationModelPackage where
  pftCompetition : Type u
  disturbanceRegime : Type v
  landUseChange : Prop
  transientDynamics : Prop
  equilibriumState : Prop

structure DynamicVegetationModelEvidence (D : DynamicVegetationModelPackage) where
  transientDynamicsClosed : D.transientDynamics
  equilibriumStateClosed : D.equilibriumState
  landUseChangeClosed : D.landUseChange

def DynamicVegetationModelClosed (D : DynamicVegetationModelPackage) : Prop :=
  D.transientDynamics ∧ D.equilibriumState ∧ D.landUseChange

theorem dynamic_vegetation_model_closed_from_evidence
    (D : DynamicVegetationModelPackage) (E : DynamicVegetationModelEvidence D) :
    DynamicVegetationModelClosed D := by
  exact And.intro E.transientDynamicsClosed
    (And.intro E.equilibriumStateClosed E.landUseChangeClosed)

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse