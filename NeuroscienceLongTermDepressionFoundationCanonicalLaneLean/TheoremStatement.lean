import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure LTDAdmittedObject where
  neuronModel : Type
  synapticWeights : Type
  hebbianLearning : Prop
  longTermDepression : Prop
  conclusion : longTermDepression

def LTDWitnessClosed (O : LTDAdmittedObject) : Prop :=
  O.longTermDepression

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse