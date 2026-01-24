\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/2 \tempoMarkup "Andante"
    R1.*2
    r2 dis' e
    e e dis
    e r r
    R1.
    r2 dis e
    e e dis
    e r r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/2 \tempoMarkup "Andante"
    R1.*2
    r2 fis g
    fis fis1
    g2 r r
    R1.
    r2 fis g
    fis fis1
    e2 r r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 3/2 \tempoMarkup "Andante" \autoBeamOff
    h'2.^\solo h4 h2
    h h a
    h r r
    R1.
    r2 h1
    h2 h a
    h r r
    R1.
    r2 h c
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e
  e -- lei -- _
  son,

  Chri --
  ste au -- di
  nos,

  Pa -- ter
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 3/2 \tempoMarkup "Andante" \autoBeamOff
    g'2.^\solo g4 g2
    fis e4 g fis e
    dis2 r r
    R1.
    r2 g1
    fis2 e4 g fis e
    dis2 r r
    R1.*2
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e
  e -- lei -- _ _ _
  son,

  Chri --
  ste au -- _ di _
  nos,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 3/2 \tempoMarkup "Andante" \autoBeamOff
    e2.^\solo e4 e2
    d \grace d c1
    h2 r r
    R1.
    r2 e1
    d2 c c
    h r r
    R1.*2
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri -- e
  e -- lei --
  son,

  Chri --
  ste au -- di
  nos,
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 3/2 \tempoMarkup "Andante" \autoBeamOff
    R1.*2
    r2 h^\solo e
    a, h1
    e2 r r
    R1.
    r2 h e
    a, h2. h4
    e2 r r
  }
}

BassoLyrics = \lyricmode {
  Chri -- ste %3
  e -- lei --
  son,

  Chri -- ste
  ex -- au -- di
  nos,
}

Organo = {
  \relative c {
    \clef tenor
    \key e \minor \time 3/2 \tempoMarkup "Andante"
    e'1-\solo e2
    d c1
    h2 \clef bass h, e
    a, h1
    e2 \clef tenor e'1
    d2 c1
    h2 \clef bass h, e
    a, h1
    e1.
  }
}

BassFigures = \figuremode {
  r1.
  <6>2 <7> <6>
  <_+>1.
  <6 5>2 <4> <_+>
  r1.
  <6>2 <7> <6>
  <_+>1.
  <6 5>2 <4> <_+>
  r1 <6>2
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
