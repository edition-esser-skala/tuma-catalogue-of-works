\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key f \major \time 4/4 \tempoMarkup "Andante"
    f4-\solo g8 a g c, \grace c' b8.\trill a16
    a4 r16 f g a d, f g a b a g f
    e d c8 r16 c d es d d e f e e f g
    f f g a g g a b \tuplet 3/2 8 { \sbOn a c b a g f \sbOff } g4\trill
    f r r2
    r1
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key f \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1*4
    f4^\solo g8 a g c, b'8. a16
    a4 r8 a d, b'16[ a] g[ f] e[ d]
  }
}

AltoLyrics = \lyricmode {
  Al -- mo fa -- cto -- ri o -- mni --
  um, pi -- o fau -- to -- ri
}

Organo = {
  \relative c {
    \clef bass
    \key f \major \time 4/4 \tempoMarkup "Andante"
    f8-\solo f, r f' e4 d8 e
    f8 g a f b a g b
    c c,16 b a8 f b g c a
    d d e c f a c c,
    f f, r f' e4 d8 e
    f g a f b4 b,
  }
}

BassFigures = \figuremode {
  r2 <6>4 q8 <5>
  r4 <6>2 r8 q16 <5>
  r4. <7->4 <7>8 <_!>4
  r2. <4>8 <3>
  r2 <6>4 q8 <5>
  r2. <6>8 <5>
}

\score {
  <<
    \new Staff {
      \set Staff.instrumentName = "trb 1"
      \TromboneI
    }
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
