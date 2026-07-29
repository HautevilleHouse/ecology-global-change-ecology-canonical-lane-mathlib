import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure GlobalChangeAdmittedObject where
  ecosystem : Type
  spatialDomain : Type
  temporalDomain : Type
  biophysicalProcesses : Prop
  humanForcing : Prop
  feedbackStructure : Prop
  conclusion : biophysicalProcesses ∧ humanForcing ∧ feedbackStructure

structure AdmissibleClass where
  object : GlobalChangeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.biophysicalProcesses ∧ A.object.humanForcing ∧ A.object.feedbackStructure) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse