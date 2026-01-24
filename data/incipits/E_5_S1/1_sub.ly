\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/2 \tempoMarkup "Andante"
    R1.*4
    r2 r e'
    c2. h4 a2
    g fis1\trill
    e2 r r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/2 \tempoMarkup "Andante"
    R1.*4
    r2 r g'
    e1 e2
    e e dis
    e r r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 3/2 \tempoMarkup "Andante" \autoBeamOff
    R1.*4
    r2 r e'^\tutti
    c2. h4 a2
    g fis2. fis4
    e2 r r
  }
}

SopranoLyrics = \lyricmode {
  Con --
  fu -- gi -- mus,
  con -- fu -- gi --
  mus,
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 3/2 \tempoMarkup "Andante" \autoBeamOff
    R1.*4
    r2 r g'^\tutti
    e2. e4 e2
    e e dis
    e r r
  }
}

AltoLyrics = \lyricmode {
  Con --
  fu -- gi -- mus,
  con -- fu -- gi --
  mus,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 3/2 \tempoMarkup "Andante" \autoBeamOff
    r2 r h^\solo
    c h e
    dis2. e4 fis2
    h, e2. e4
    dis1 h2^\tutti
    c2. d4 e2
    c h2. h4
    h2 e^\solo e
  }
}

TenoreLyrics = \lyricmode {
  Sub
  tu -- um prae --
  si -- di -- um
  con -- fu -- gi --
  mus, con --
  fu -- gi -- mus,
  con -- fu -- gi --
  mus, San -- cta
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 3/2 \tempoMarkup "Andante" \autoBeamOff
    r2 r g'^\solo
    a g a
    h2. h4 a2
    g g a
    h1 g2^\tutti
    a2. h4 c2
    a h h,
    e r r
  }
}

BassoLyrics = \lyricmode {
  Sub
  tu -- um prae --
  si -- di -- um
  con -- fu -- gi --
  mus, con --
  fu -- gi -- mus,
  con -- fu -- gi --
  mus,
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 3/2 \tempoMarkup "Andante"
    e2-\solo g e
    dis e c
    h h' a
    g c,1
    h2 h' g-\tutti
    a2. h4 c2
    a h h,
    e g-\solo e
  }
}

BassFigures = \figuremode {
  r1.
  <7 5>1 <6>2
  <_+>1.
  r2 <5> <6>
  <_+>1 <6>2
  r1 q2
  <7 5> <6 4> <5 _+>
  r1.
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
