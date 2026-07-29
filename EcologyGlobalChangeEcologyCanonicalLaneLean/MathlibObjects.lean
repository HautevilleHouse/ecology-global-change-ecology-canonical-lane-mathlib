import HautevilleHouse.EcologyGlobalChangeEcologyCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EcologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EcologyAdmittedObject where
  space : EcologySpace
  ecosystem : Prop
  biodiversity : Prop
  climateModel : Type
  climateTopology : TopologicalSpace climateModel
  ecologicalState : Prop
  conclusion : ecologicalState

structure EcologyEndgameState where
  object : EcologyAdmittedObject

def EcologyWitnessClosed (O : EcologyAdmittedObject) : Prop :=
  O.ecologicalState

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse