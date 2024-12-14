\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key b \major \time 4/4 \tempoMarkup "Andante"
    r8 f'\f a,16( c) f,-! es'-! \grace es d8 f\p a,16( c) f,-! es'-!
    \grace es d8 f b16( d,) e-! b'-! \grace b a8 f\f b16( d,) e-! b'-!
    \grace b a8 c,\p f16( a,) h-! f'-! \grace f es8 g-! c16( es,) fis-! c'-!
    b8-! d,-! es16( g) c,-! es-! d( g) b,-! d-! c( g') a,-! c-!
    b( g') g,-! a-! a4\trill g8 d' h16( d) g,-! f'!-!
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key b \major \time 4/4 \tempoMarkup "Andante"
    r8 f'\f a,16( c) f,-! es'-! \grace es d8 f\p a,16( c) f,-! es'-!
    \grace es d8 f b16( d,) e-! b'-! \grace b a8 f\f b16( d,) e-! b'-!
    \grace b a8 c,\p f16( a,) h-! f'-! \grace f es8 g-! c16( es,) fis-! c'-!
    b8-! d,-! es16( g) c,-! es-! d( g) b,-! d-! c( g') a,-! c-!
    b( g') g,-! a-! a4\trill g8 d' h16( d) g,-! f'!-!
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key b \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    r2 b'4^\tutti c
    d8[ c] b4 c r
    c d es8[ d] c4
    r8 d4 c b a8
    a g16 g g8 fis g4 r8 d'
  }
}

SopranoLyrics = \lyricmode {
  Be -- ne --
  di -- _ ctus,
  be -- ne -- di -- ctus,
  qui ve -- nit in
  no -- mi -- ne Do -- mi -- ni, "be -"
}

Organo = {
  \relative c {
    \clef bass
    \key b \major \time 4/4 \tempoMarkup "Andante"
    b8-\solo d f a b4 a
    b8 a g4 f8 a g c
    f, es! d4 c8 b a4
    g8 b c a b g a fis
    g b c d g,4 g'8 h,
  }
}

BassFigures = \figuremode {
  r1
  r4 <5>8 <6!> r4 <7>8 <_!>
  r4 <5>8 <6!> r4 <5>8 <6\\>
  r4 <9> q q
  r <6 5>8 <_+> r2
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics
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
