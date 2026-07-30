import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure NeuralSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuralAdmittedObject where
  space : NeuralSpace
  ltdCircuit : Prop
  plasticityModel : Prop
  spikeTimingProtocol : Prop
  longTermDepression : Prop
  conclusion : longTermDepression

def NeuralWitnessClosed (O : NeuralAdmittedObject) : Prop :=
  O.longTermDepression

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse