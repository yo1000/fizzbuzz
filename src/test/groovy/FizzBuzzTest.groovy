import spock.lang.Specification
import spock.lang.Unroll

/**
 * Created by yoichi.kikuchi on 2016/02/15.
 */
@Unroll
class FizzBuzzTest extends Specification {
    def "fizz - number が #number の場合 '#expect'"() {
        def fizzBuzz = new FizzBuzz()

        expect:
        fizzBuzz.fizz(number) == expect

        where:

        number || expect
        0      || 'fizz'
        1      || ''
        2      || ''
        3      || 'fizz'
        6      || 'fizz'
        -1     || ''
        -3     || 'fizz'
    }
}
