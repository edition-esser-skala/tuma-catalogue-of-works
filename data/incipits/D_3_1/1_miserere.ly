\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key e \minor \time 3/2 \tempoMarkup "Adagio"
    R1.*2
    fis2-\solo f(-. f-.)
    e4( d) e2 r \gotoBar "11"
    g1-\tutti g2
    fis1 fis2
    r fis f
    e1 e2
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key e \minor \time 3/2 \tempoMarkup "Adagio"
    R1.*2
    h4(-\solo a) gis2 gis
    a1 r2 \gotoBar "11"
    h1-\tutti e,2
    fis1 fis2
    r h h
    c1 e,2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/2 \tempoMarkup "Adagio"
    g''2(-. g-. g-.)
    fis4.( e8) fis2 r
    R1.*2 \gotoBar "11"
    e,2 g' g
    fis4.( e8) fis1
    r2 fis f
    e1 a,2~
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/2 \tempoMarkup "Adagio"
    h'2(-. h-. h-.)
    h1 r2
    R1.*2 \gotoBar "11"
    e,2 h' c
    c4( h) h1
    r2 h gis
    a1 a2~
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 3/2 \tempoMarkup "Adagio" \autoBeamOff
    R1.*4 \gotoBar "11"
    h'1^\tutti c2
    c4 h h1
    r2 h gis
    a1 a2
  }
}

SopranoLyrics = \lyricmode {
  Mi -- se --
  re -- _ re,
  mi -- se --
  re -- re
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 3/2 \tempoMarkup "Adagio" \autoBeamOff
    R1.*4 \gotoBar "11"
    g'1^\tutti g2
    fis1 fis2
    r fis f
    e1 e2
  }
}

AltoLyrics = \lyricmode {
  Mi -- se --
  re -- re,
  mi -- se --
  re -- re
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 3/2 \tempoMarkup "Adagio" \autoBeamOff
    R1.*4 \gotoBar "11"
    h1^\tutti e,2
    fis1 fis2
    r h h
    c1 e,2
  }
}

TenoreLyrics = \lyricmode {
  Mi -- se --
  re -- re,
  mi -- se --
  re -- re
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 3/2 \tempoMarkup "Adagio" \autoBeamOff
    R1.*4 \gotoBar "11"
    e1^\tutti e2
    dis1 dis2
    r d d
    c1 c2
  }
}

BassoLyrics = \lyricmode {
  Mi -- se --
  re -- re,
  mi -- se --
  re -- re
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 3/2 \tempoMarkup "Adagio"
    e2(-.-\solo e-. e-.)
    dis1 r2
    d(-. d-. d-.)
    c1 r2 \gotoBar "11"
    \mvTr e1\f-\tutti e2
    dis1.
    r2 d d
    c1 c2
  }
}

BassFigures = \figuremode {
  r1.
  <6>
  <6 _+>4 <5> <10! 4\+>1
  <6>1.
  r1 <6>2
  <7> <6>1
  r2 q <4\+ _!>
  <6>1.
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
    >>
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
