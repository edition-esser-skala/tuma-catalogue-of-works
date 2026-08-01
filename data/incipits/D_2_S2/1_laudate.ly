\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Andante"
    g4 r r8 d' fis d
    g g, r4 r8 d' fis d
    g g, r4 r2
    R1*2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Andante"
    g4 r r8 d' fis d
    g g, r4 r8 d' fis d
    g g, r4 r2
    R1*2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1
    r8 g' h g d' d d c
    h8. a16 g8 r r2
    R1*2
  }
}

SopranoLyrics = \lyricmode {
  Lau -- da -- te e -- um o -- mnes
  po -- pu -- li.
}

Alto = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1*2
    g'8 g16 g g8 g fis4 fis8 a
    a g a fis g d e fis16 fis
    e4 dis r r8 a'
  }
}

AltoLyrics = \lyricmode {
  Quo -- ni -- am con -- fir -- ma -- ta est %3
  su -- per nos mi -- se -- ri -- cor -- di -- a
  e -- ius, et
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    r8 g h g d' d16 d d8 c
    h g r4 r2
    h8 h16 c d8 c16[ h] a8 a a4
    a8 a d c h h h h16 h
    h8[ a] h4 r8 e cis h16 a
  }
}

TenoreLyrics = \lyricmode {
  Lau -- da -- te Do -- mi -- num, o -- mnes
  gen -- tes.
  Quo -- ni -- am con -- fir -- ma -- ta est
  su -- per nos mi -- se -- ri -- cor -- di -- a
  e -- ius, et ve -- ri -- tas
}

Basso = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1*2
    g'8 g16 g h8 c d4 d,8 e
    fis e fis d g g e d16 c
    c4 h8 h' gis fis16 e a8 g16 a
  }
}

BassoLyrics = \lyricmode {
  Quo -- ni -- am con -- fir -- ma -- ta est
  su -- per nos mi -- se -- ri -- cor -- di -- a
  e -- ius, et ve -- ri -- tas Do -- mi -- ni
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Andante"
    g'4-\solo r r8 fis d fis
    g g, r4 r8 fis' d fis
    g4 h,8 c d4 d8 e
    fis e fis d g4 e8 d
    c4 h e a,8 cis
  }
}

BassFigures = \figuremode {
  r1
  r
  r4 <6>8 q16 <5> r2
  r2. <_!>8 <6>
  <7> <6> <_+>2 q8 <6>16 <5>
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
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

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
