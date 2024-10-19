\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key b \major \time 4/4 \tempoMarkup "[no tempo]"
    R1*5
    r2 r8 b'' f16 b as b
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key b \major \time 4/4 \tempoMarkup "[no tempo]"
    R1*5
    r8 f' c16 f es f \grace es8 d4 r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key b \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1
    r8 f b d c16[ a] f8 r c'
    f,16[ g] a8 b8. b16 a4 c8 c
    a[ b16 c] d8 c b16 a g8 r g
    g a16[ b] c8 b a g16[ f] b8 g %5
    a4. a8 b4 r
  }
}

SopranoLyrics = \lyricmode {
  Re -- rum cre -- a -- tor, cre --
  a -- tor po -- sci -- mus ut pro
  tu -- a cle -- men -- ti -- a sis
  prae -- sul et cu -- sto -- di -- a, cu --
  sto -- di -- a.
}

Basso = {
  \relative c {
    \clef bass
    \key b \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r8 f b f g f es8. es16
    d4 r r8 c f a
    d,16[ e] f8 f e f4 r
    r2 r8 d g f!
    es c es8. es16 f4 d8[ es]
    f4. f8 b,4 r
  }
}

BassoLyrics = \lyricmode {
  Te lu -- cis an -- te ter -- mi --
  num re -- rum cre --
  a -- tor po -- sci -- mus
  sis prae -- sul
  et cu -- sto -- di -- a, cu --
  sto -- di -- a.
}

Organo = {
  \relative c {
    \clef bass
    \key b \major \time 4/4 \tempoMarkup "[no tempo]"
    b4 d es8 d c f,
    b4. b8 f4 a
    b8 a g c f,4 a'8 g
    fis4 fis, g b
    c es f8 es d es
    f4 f, b d
  }
}

BassFigures = \figuremode {
  r4 <6>2 <7>4
  r1
  r4 <7>8 <_!> r2
  r2. <6>8 <5>
  r4 <6>8 <5> r4 <6>
  r2. <6>4
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

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
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
