import 'package:flutter/material.dart';

class PlaceDescription extends StatelessWidget {
  final String index;
  const PlaceDescription({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          bottomSheet: BottomSheet(
            enableDrag: false,
            showDragHandle: false,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(150.0),
                topRight: Radius.circular(150.0),
              ),
            ),
            onClosing: () {},
            builder: (context) => Container(
              padding: const EdgeInsets.only(
                  left: 32.0, right: 32.0, top: 16.0, bottom: 0),
              height: MediaQuery.sizeOf(context).height / 1.4,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(150.0),
                  topRight: Radius.circular(150.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Manarola, Italy',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.star_outlined,
                                color: Colors.yellow[600],
                              ),
                            ),
                            const TextSpan(
                              text: '4.5 Rating',
                              style:
                                  TextStyle(fontSize: 20.0, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 193, 190, 190),
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(30.0),
                                  child: Text(
                                    'Mon 6, Now',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 119, 114, 114),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 193, 190, 190),
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxATEhUSERIVFhUXFRUXFxUVEBYYFRcSFRUWFhYVFRUYHSggGBslHRUVIjEhJSkrLi4uFx8zODMtNyktLisBCgoKDg0OGxAQGy0lICUtLS0tLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLf/AABEIAMYA/gMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAwQBAgUGB//EAD8QAAICAQIDBgQEBAMGBwAAAAECABEDEiEEBTETIkFRYXEGMoGRQqGxwRQj0fAzUnIVFmKS4fEHU2OCorLi/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAECAwQFBv/EAC4RAAICAQIFAgUEAwEAAAAAAAABAhEDITEEEkFRYXHwEyKBkaEysdHxFCPB4f/aAAwDAQACEQMRAD8A+gJUyX8p4/j+Y8aONXGg/l3QG+9nbbxvz9T0qeyxruAosn9ZyRmpX4MuK4KfDRxyk0+dWq+n877PWtiTHw5cja2O1e3iZjilCMU8Qak3C884PGWxpmXLnB0tjxEM+vW2PRXRSGRhuR8pJnNy/G+Jzl/hOGfLlXE+VdaNjXLow4M4RXCMdZx5hSkA2tEAEGbcpVcO3EucPhckFUJ3B6Gj9ZfXlLE2x2Juuhr1Ph9px+N5xzLtSmPFj0rxXDqSUKB+GfFrdkfIwV2LnQFFHVsa6zj8bzjKgRs/HiwTmXsizI/8KM54rfEiqcfdWsTsCDja2MnlSLx4ddT3T8Ki0GdVBOlRsLO5Ci+p6yHisIVq9PGcTlvwdjbGjZM2SrdlXQgK4cxw5Didn7Ri2rCpOQPqJJojavSczHQ+4/v85ctKKS0OVn4HC51PixsfNsak0PUiVuxxY2PZ4samqJXGqmj1FrW3T7SXLxBOy9JATKyyOqt+/wAHJOSexmweu3sB+kxo8bB9r/cTHXpJTYFX49AQf0mRQhhYLTQQQSFpCTJDI4BuBUs8Nn8D0lUzNyU6CdbHYEw2TylDHnYddxLqEdRNE7OmM0zUKZITQqYLTCrvZliwRPEySZM1uQDIkZ6wzTASAb6q6TO8AVDNAMVEXNSYBtcCYUTJgHhOZNmx51dj3/5YR1A0mux1gKWHiOI7pUk9rjoijp9vyvPjRu8tE9G60PLeee5xy9cugkkFSRa6bo10DWG3VTW1gEAgmZ5Jx+TIWGXFpKhQTRokkjyoHu3QJ69Zq8X+lZI9L5unVJV38118anN8abmk/RbvTV/TVvr3rXQ9QOQ8C4N4MThmylg6BwWy5VzZLDWN8iq3oVHSc/nPKOJbLeHiE4fAMHZhAprte8RkoFQNGjABvuvaLtsZzeJ5/iwmxktieib7b2SPoevl5zqcVzdMnD6yyleusEadut/S5m1JRUnFpPbs/fj6WdEeKi21eq9/Qh4/lXBZcuPiOJZXzouIB8aFRrw5e1VkBLFe8W2LHZiJX4blfLcSquPhFYKGA7TvfOipkPevd1Uaj+K2JvUb5fC87wPk7MEiyFDFaGo1Qo7jrW4E6Z4harxqyPHqBv8AeTkxZcbqcWuuq9/+bMyhxUsibxtNbaHRwceUUJiTHiRRSqiUFA6BQNgPpM8XxLFQGbUTR8Nh4dPPr9pRbiFF2aosK8e4QCdve/abHi1YjuCyFG+r/Ja+O3dF/T2mVS6k3NrU11TfhkDOAen60Lr/AKyHHnxuLAZW8Uq+9pD1d2DV+Y260RNsOdQCfE6VXyvIWUEUd+h+4jkaKcjsiw84x6b7MCwC1NqGnQHAsm1an+hHlVxZuZYtiLAJxqLo97J5UegO1+o6jeRZeYdW0fyg3Zl9XuL010/rL4xBQNPyjYbUBWwFeG0mSrdF5NdUacLxOF2GMFw5VmshdI0voIIBPQkb30PSWzhVQNYazqF+RU+C+Ph4+MqrcyzEnck+5lLM3JdEb58ek+YqwfAjzElxcOVNtpIUMTuDTBTQYe9SPFnZRt0u6IBF+YB6GRqpO/5xoE0WsbnJs+50nv76tgW9j/1kJAEkwuosXVrQJvrYvp02uajh9R2yLe/g1bCzvp9I3JeqIS9yxwuQjbwP6yNUUes2LdJCZCdOy8gkoO0j1Rqm50m7NtIwZrcwRANl6zYtNFmoyKWKhhqHVQRY6dR18R9xAJDkmpaaZWCgliAB1JNAfUzfSYBFxecohbSWAokKCW03uQB1IG9ekoPzVhY7I2O0B66daAEb10J1AbbnTXWdYJJQsEo5Kc3sGsTGgDXqTRU/5SNzXkRLnC8Tr1d0imI3/vY+ktATQneBocG5T5jwC5goY1Xt5V4+PrLoEiGUet92xRsajSg+V/3sQT7byLG07pnC4qSplTDyPhlsFS12LZz0qhQFAEDoav1ldPh5SSMjlkBOlPDc2S19DQAsV0PnOocg9fxbUeiGidvD+oh8oFE9C2m66d0sCfTYdP8AMPWsPivVxzPXzzfVXbX0aM/8fHp8q0+n7VpotPCe6TVfiuU4qV1pRiDNQFnwbVZN2CoNyXlPFFkvGbHe3YMabbukkg2buq8b9JJgzg1YPeC7VvTbUfDrt/03nKx4HwZC+EjsmJLIVYUdaggUdNiyoI8vEbzmfLKLxudveN7PVtp9bt6O/Ba3jako6de/RJ9qVaqvPc7mZ3N7L6dffz6Xf384751AV07v+rff/wCvXykJ41PM9aojfUK299/36SFOZFi3Y42yaBbndaFEgKKJYkDbatxvOF2ldGjype7/AJL5fIp6K1XW13ZNCrHoD6esyMuQkd0AKy1Snw+Y9feid+m0hwcQuRQ69CL36+xkoytVWQPTaRz6bF1ktHMy8rrJoH+Ex7TpvYLLovyN37Tq49Qsjw6/X/t+UjJ3kmK969OnnYP7GHJy3Iu2T4w1Gyeg6n1Eqv1lnPk7orxJv3H/AHlQyhD7EqrfsJnr0mVU1QkqLUBRI+y895LgUC2sjTWy9d/XwHh49ZJQC2RdmgLrpVn8x+c1GQD5V3II3YnY9ZJakjRwpJNAegmNEBJvhUk+g/WRVirZYAmZgtMCbnSCJiptpmagg0MrZ+XLkvUzgEg0CoGqgti1voB+1S9omTBJyxyHDvu+6lfmXoWLbALtuT+Uu8Hwi4wQpJtix1EdSANqA22liIDbZsBMzW4kEAmRzYzF1AODAP8Af5xE96jjM3MAxEikA7N+H16nxA7v7faAzV0Xwsb+R8zXUL/YiJjLBGW7f4/gmyI473bGu93sPACherzs35Cj5zk80D4WGTGoAyBRkpAVV7U/L7gN6kCduauisCrqGU9QRY29DMZ8JGur8XX2217famnRnkjzRpaPp79+pHyzLhKBcLBgoA9d/Eg+e/5y5W087xHBZsDPl4f5TV4xZoAfKFJqgbOxvvEATtct4o5satp0kkigb3BrY0OvtOTieE+ElOP6XW+6dXTVL7q1puVxzbfJJU19q8P0rR67FhTRudXlnCnIdTLpX02s0R+8j5dwOs2eg6n9h6zXjfi7hcIIRcmQo642TGlMrtmbAoYOV6uprqSKIuxfNGPVndhxOWpo/L8rMaQ1Z3Ow+ly1j5I97lfznCzfHuU5cuHDwbu+PiGw6Q4LEBOJK5QhC2CeHO10dYAbVajdua81zLn0cM6IeHxtgKlMWX+K7LHlZGGbojHJo1VYONx1oyeVGi4ZdT06cqXxYn2AH9ZOnAYh+G/ckzyY+H+Ndy2tlD8CcBfLxWR8i8QyaDmPDreEmkxnuMu5yHctt6L4e5T/AAuBOH7V8q4xpRslaxjHyqxUANQ2uhsBLV4L8kVsc7mRKuRVAHbahXXb7yuvrOpzDJpzA6iAQCaJqxexA+k5uTCQbLA7WKvp9ZnJanJONNmO0MtIKFf3cp3RHvL4kwLY9bMzAm8wFlzU1FmSmZmogGYqBDQDFxcjuSKJINhMGZUw5kA1kRkswBJBwYiJ7pxiIiAIiIAiIgBTOLzThCn8048edVDalzKWvbTjdwWAJxrQB6gDzNjtQDM5Y1Lcm2ti18J87U4UUNr0qqtbL2mpbQu5HzFtN3/Y63+y+BzNmZsOJ2zjH2wdFbtOx/w+0Vtm0+B9B5CeP4rkuF31qXxtvZBuiTdpfyG7O3mZWP8AE8LTX22O+u6gAp595lNj1G/rOOXCpv8A1um9oyVfRS/S/F1frZEeKy41/sVruv4q19E6+1/R82fHhAXTQrYKoA2oe3lKz82P4UHpbC/sJw+H5r26KwbUF8xuCQDpb8pI/mP1uj6mefJtNp6NdOxu87lrHY6GTmOVltTXnQH7/wB7yocztep2+pNfaRLxFb1v9fzozX+IPt7bbfSUbKOd7stDh+hsAbWT4XvsOp2qQ58tnbpsB7AUP0nGbiuLKqGRyQGsh8QANGio1b/h8uktcp16WOcsD2jaVpS3Z7aRamvP1m+TAoK1KL9HZFp6Is1L/D5bFeMqvjUAMCaNijXUV4j3muPC53Cn08L9r6/SYrRiNxeh1BBlLDxRHzb+vjJxxK+f5GXtG6mmTTEwrg9DNpJYAyPIZs0ASQaovjJIMCABMmYEEyAYAmdQEiLzABMkHFiInunGIiIAiIgCIiAIiIAkmBt9+nl4GRxKZIKcHF9STmcXyEBtfDt2bD1PsRq3IFHpv0E1TiOYof8ADV62ul7xBrwcbEeY+062oxqMwUc70ycs62clr91T/LMfgxTuLcfTb7NNfj1ONk+IMuMHteH0tTaSL0lqtGIY0B5jUTt08rPLedZNfZ8UpUn5XIO+61qoECw3UGtt6nTUhtmE5/xNw4ODX+JGUg2R1YCtQ+UXRP8ApmMfhSyLDPEo8z1ab0vRNXel7p2uulFZLJCLmptpLbRX3vb6VVdXTZ0suQDr517ep8h5nwkOhGBIcqzCgwVrHdDeGw2Trc14XNkfHjZae8atbUCW2BJomttRoefWSsGBP8vGNjpNLZsdNh0sb+d+k81pptM6V3MPmXfvmvm317BgR7f8QFeu42ky8RqYnVbA/Yg/l4flIHXbZFK0fmCCyD3RXQdb/pc3Qua0oKLC22A0181DfrtIbJdl/LhZzaC7o7EbE9QR4b3KxFSxgAFnyU+9nuj82v6SvpJ6AmtzQuveGGZR6NidJGsWJy0TxMyp8oi6JhLlOq8wolFOLI67/r95OnGqfMTTmRqsiZaMwsjOZfMfearnU9JNlrRITFXNAPObaoJGkCNU1CyQLJBwIiJ7pxiIiAIiIAiIgCIiAIiIAiIgGZsyDIjY26MpBI60RRk/L+C7UsoaiBYvod6Pt1Ek/g3x3rWvAHwPsZx8XKHI73VV33WxbldX0PL8FxeXg2CZUJxampgB0OokqRtVC9Jo9Z2+MYVrZtIArUTVBmQ9fXSBXjqkXOzj7DJ2gtTtW16jsKvxszzuEDK+LBbdkK7us1YL5G06a60CtD5a3uUWOPFx+NJcrV8zStNJXat6S79Nb068fN8H5E725U91bpL0/KS6lzNxj8TqXBjLoKJJyLRsuRYJ3byH3q5L8P8ANcaIuBgysTfTbVkJrVt3WuxXhOxhwBVCqKAFAeg95DzHlmPMulxuOjUCw3vawdjMlxOGSeJwahelN2mlVvo+9KvGtMu8eRPnTuXlKvRdV+f+F5+LREbtPl+YkNR2B9DftPP4ue5M3FYUxsceMZDpA1EtpN6mQizekj0v0j/drAoL5HOhRvsK0jcg7btsBYo7ATb4R4atXEaNBfUoGwGmxq23a9SEWT0vajvrhhgxYp5E3JpUrVK5dk7be7be3jRkSnllOMdld6NttJ3ukqV6Vavzqn6NsW51G9/A2PvInbymXeRmeUdTfY0MyomDNgYKgtNlYg2JpJEXzgk6IawDNlWV+FcfL9pbmqdnVF2rMTKzUtMgySTgRET3jjEREAREQBERAEREA2xYmY0oJPkBcu4uTZz+ED/Uw/azNeT5NOZPUkfcUPzqdvnr8QuBzwy6sg00Nr0617QqGIBcJqKgmiQAdpycRnljdI3xYlJalLF8PN+LIB7Lf5mWRyXAu7knp8zULJodK8SJxMnCcyyPiZcmRUHYi8mTHjcaOIc8Q2XFiUq/aYdAUWNJF0hszm8B/wCHOTRjHEcbkZ8a5AMiag51tw7rrLEq4VsL7Fd+0DbMNR45cRlfX/h0xw417s9I3OuX4VLq6UuI5S+NTkAw6S+ougIoqpYb7gWLkHxD8X8PwtrlTI1ZcWNqTV3MqPkOWhZKKmLISa/A00/3I4AFWyKzaQ4AfIQlOrobUUNsblP9KrdkAzrY+A4XAusY1GlQNbd/JpGvSO0a2b/EyVZ/GfOZXJl/lWxzviLlWJ8DsvitqoIpm6rpNggnwOqhdkGeY4DGVzqQCpUZMZHYMFGJSq4SuegmQsF1EKLBY3VG+1x/GtlazsB8q+Q/rK07ocLLl5XKl29dP70OGU423GK9S2ykdbldOKRiAG6gkbEAhTTFSdmokdPOYTIw6E/t9pU4XhirKS5YIGVRpUGmIO7AW1VQuZ/4Gj1t9Pzv03rqZPwXuMxa8b4wa1Ky3V1Yq68ZwAOM4dGVQHxoGrawBZckAEMdybu+u09GRtY6QcIZGVujAg0aNEVsfCc2LiHiTg4pxu2mr+u61opPFzO7adbp+151T1RBy7iRlxrkC6dV7XfQ1YNCxtsak5E43wnqONkqijHVXXfqaG1WpFjY0Z0cnHYlbQzqGq6Jrbr16fSOJwcmecILRN1Wum67vahjnzQjKXWvv16LrfQmmQJgGRcPxeN2Ko6sR1AYE7Gj+c50m1aLllF3sxkyeUASXGgG/wCcgskRJjPWX8TkgSk2SWOFO31lo7l8b1Nc+cKQCDuCbsABVKhmJJHTWu3vIhzLExC2RsTZUgAggaTfjvftLjYwasA0bFjofMeRmcOBAbCqCBQpQKW7oV4XvU1N9DiRET3TjEREAREQBERAEREA2xPpYMPAg/Y3O/l+IMY+VWPvQH7zz0TLJhjNpy6F4TlHY6+Xn+Q/Kqj7k/tKeTmWduuQ/Tb9JUiTHFCOyQc5Pdh2J3JJ9zctcZxzZAoPRQBXmQKLGVYl+VOn2K2xERJIEREA2x5K9pOd9xK02x5CP7/OcfE8N8T5o7/v7/iySll5TeQ5MZVSCCp3BBo3VA1vpIqj3nFiwZBm5I77uyFgNnti5bQFLMWU3RVa92853kF9JX4/P2eNnIvSCauvznBHPntRUne2/wCO4dVqlXov6OLn5bmwlnwFQAPkAOo1ksbBe8AhI8/rOTwCvgzYmckajRVtmXGzBR3aoWd62oJ9u1zTi8lDs8uNCNz39RJ1FR1Sqse/tvIuXclbOFzcTl1BlHdGzFCOhYVQ3Y0B9Z6eHI4Ym+IaqVp7ub0aS7PunbadK0cfEYpSmuSOqprZRWqb867bddtz0gbaaFiZs9eE1UzwztZI1ATTDmINj7SJzJcePazA66HQRw3SSVOQrkHY1LCcYfHeaKZqsq6nPiIn0BgIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCJlEJ2UE+wv9Jbx8rzt0xke9D9d5WUlHd0Sk3sU4np+D5cOyCZlU0TVeAO/Xw3uUeL5Cw3xG/wDhbY/Q9D+UxjxUG6/o0eGVWc7h3NV5ePpONxHxJgrugsdiFK0CrGgxO9A/fbpJviUZFwNjBUG11jo2kkhQA/m4AHnRAuOQ8LiKAKMbtjY26rYDnckMyg/kOn0HLKOB82WScvm2TqvL0eknotq3s5snxXLljp5a6volpsl531VD4Zwvu2bGBj0KqqQCdOvI23/PdkAkidhsAUlauvoK8K+kucOdqFWBY26t5+pqz9PpKmXP9T5zjzZXlm5vr79+dTaMFGKTd+/foa5NvKR4xNSbkmPGamINwAJrkyTYYgOsiymAaibgTVBJBBUqRET6QCIiAIiIAiIgCIiAIiIAiIgCIiAdbk3L8eUMXuwaoGhVbevnLHF8RwHDsEyviV/5dK7AvWXJ2aEKbNF9r6bHykPw1kp2XzW/+U//AKlrmnw7w3EZO1zIGYYzjBNWoJvUrVqRhbAEEbMZ5nEymptWduCMXFOjmcb8dcFiVipZ9HEZOGfRjNY8+LG+Qhx1C1jbvgECiTQBI5vG/HGfIuZeB4ZndU4ZsOQ42yY8jZRhyZcexUB0xZ0YDWL36UZ6PFwXL8La1TCH1FtVBn1lsjFr3a7zZd//AFG85Ied4FFICQNgAtDboN6qYRxTlsjR5ILc8znyc5zE9nqxa8R02uJcKauEsHvfzxnHEmqI0aB0vedf/ZvGPxePi3zDCqYgjcOGORGDPkOQuSFANDCVYdCrA2DLnDc715FTRQJq9Vnoa8POVOc8y1ns0PdHU/5j/SaR4ablyso88atFX4g5gMqkKSoQ60cVqDoQyuAQRsR0INjqPCcn4efKFK5lbWxbNbFCWGU6mLFPxaixqgBYA2EsEXYPj+hE43F4smHLjy4gzqqhabIWCpdFe8SwWje1ix6TvfB45QlGP6ntfddLtVZ5+XLJfM7rx6rp1rf7np8mbymX74LD5h8w8x/mHr5/fznK5bzNM90CGA3BHrRo+O4nU4ZtJDeI/up4s8cscuWapl4zU1adp+/wYxYvOT0PGa8TkCmh7j/SdwfsZWXUxrcnyH9JQttobPk8uk1aYVSTQFk9BJMuJl+YEfv7ecFddzZOk2VphUFC5g5BBJTiIn0hUREQBERAEREAREQBERAEREAREQDbFlZTakg+YjJlZvmYn3JP6zWIpXYEREAREQDXx/v+/GbTUzaCEcTjMeTFxHbYsWsEDVS1ZrSQWH4Rs3Q2Zd5fzy8gx5RpLbKNJXS1tSkse9YAIIA611l6UOY8B2p+VTaMgJyMhxlipGVQFK5SKNI+3h0JmPFRxyhco20qtPWunh1+2l0UjialpKrd67edtdfqvB6DgxmYhUZh/wC4gAec9DwvD6FosWPiWJP2B6CeS/2Vxf8AEFuDzLj4bskvEWIf+I7Uu7sKOxTSv2AoCjpj+G+ZMw18a+JRlVmbFxDuzhcfEKzquXHoxajkwfyQGReysG9548VWx6ePGorc9N/sla2NE7EgeHiBZNAzbFypAK1MQeosUfWq6+s81w/wxzDSRk48m+Fw4CKcjXhGMnKWLBizv24Y7Eq67grcjy/A+d9GvjAaw5MTD+GB7rjOAMZL/wAsVmUHSBq7IdBQVRKxwPT5OVYurM1DzYD9pjHyvhySBuR1GvcX5gHaeZ43/wAO8eXte0ztWUklkxKuVr4jFxFZchJ7XQcQTHYGhGI707/w/wAhXhTlKsW7VlYiqAKoF2FkAbdB+cUuxPwoe0efiInvHnCIiAIiIAiIgCIiAIiIAiIgCZV68AfeIkcqloxzOOqMRESaS2ITb3EREEiIiAYaZERAQiIgHS4J2oNe4FA+NdB+s7vC8TdKeum78IieHk0yyS7nTibtHLz8zyhmAPQkdB4H2kD80zf5/wD4r/SZiYWzHnk71IX5hn/8w/pIl4/Ifxv/AM5iJFsi33P/2Q==',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                      const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      const Text(
                        'About Trip',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Manarola, built on a high rock 70 metres above sea level, is one of the most charming and romantic of the Cinque Terre villages. The tiny harbor features a boat ramp, a tiny piazza and picturesque multicoloured houses facing the sea. You can enjoy lunch at one of the fish restaurants in the small square next to the harbour. The harbor area is filled with colorful rowing boats and becomes the main sunbathing and swimming spot of the village from morning until dusk. In fact, this is the perfect place to spend a lazy day sunbathing and watching people jumping off the cliffs. Although there is no real beach here, it has some of the best deep-water swimming around.',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Total cost',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                text: '\$770',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 20),
                              ),
                              TextSpan(
                                text: '/person',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 200,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100.0),
                                topRight: Radius.circular(100.0),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'Book Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
          ),
          body: Hero(
            tag: 'tag-$index',
            child: Image.asset(
              'assets/images/img_3.jpg',
              fit: BoxFit.cover,
              height: MediaQuery.sizeOf(context).height / 2.5,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 50.0,
            right: 50.0,
            top: 40.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 25,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Icon(
                  Icons.favorite_border,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
